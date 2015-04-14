require rbenv
rbenv::plugin { 'sstephenson/ruby-build': }
rbenv::build { '2.2.2': }

include vim
