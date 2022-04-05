#Title: Obtaining taxonomic lineage utilizing protein id
#Author: Katie Ostrouchov
#Date: April 5th, 2022

#A modified version of UniProt.org help documentation was utilized to write this Perl script obtained from https://www.uniprot.org/help/api_downloading

use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Date;

my $top_node = $ARGV[0];

my $agent = LWP::UserAgent->new;

# Obtain the taxonomic lineage of specific UniProt protein ids.
my $query_list = "https://www.uniprot.org/uniprot/?query=$top_node&columns=id,entry_name,organism-id,lineage(ALL)&limit=1&format=tab";
my $response_list = $agent->get($query_list);
die 'Failed, got ' . $response_list->status_line .
  ' for ' . $response_list->request->uri . "\n"
  unless $response_list->is_success;

  # For each entry_id, write text file with id,entryname,orgid, and lineage(ALL)
for my $proteome (split(/\n/, $response_list->content)) {
  my $file = $top_node . '.txt';
  my $query_proteome = "https://www.uniprot.org/uniprot/?query=$top_node&columns=id,entry_name,organism-id,lineage(ALL)&limit=1&format=tab";
  my $response_proteome = $agent->mirror($query_proteome, $file);

  if ($response_proteome->is_success) {
    my $results = $response_proteome->header('X-Total-Results');
    my $release = $response_proteome->header('X-UniProt-Release');
    my $date = sprintf("%4d-%02d-%02d", HTTP::Date::parse_date($response_proteome->header('Last-Modified')));
    print "File $file: downloaded $results entries of UniProt release $release ($date)\n";
  }
  elsif ($response_proteome->code == HTTP::Status::RC_NOT_MODIFIED) {
    print "File $file: up-to-date\n";
  }
  else {
    die 'Failed, got ' . $response_proteome->status_line .
      ' for ' . $response_proteome->request->uri . "\n";
  }
}
