# trailing-vpp-branches
Experiments in cherrypicking.

All the scripts clone from local repository "vpp" for speed.

Thus, a prerequisite:

`git clone https://gerrit.fd.io/r/vpp`


After that, run:

`./run-all-trailing`

then take a lot of coffees (for several days)

and then:

`./import-all-logs`

Then you will have a (big) log logdb.sqlite3 with all the results, for your analysis
# fun queries
Show the aggregate results of cherry-pick attempts depending on branch delay

`select count(*), branch_delay, status from cherrypicks group by status,branch_delay order by branch_delay;`
