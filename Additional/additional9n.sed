#!/bin/sed -f

# Gaurav is a software developer who works on a project in which he uses python as programming language. He puts as comment `# TODO: <things he wants to do later>` to the things he wants to do later in the code base. One day,he wants to complete all those things,forthat,he wants to get all the todo tasks.He wants to write a SED script to search for the todo comments and extract only the `<things he wants to do later>` part.
# Write the SED script for the above task.
# **Sample Input**
# if self.propagate_exceptions:
# 	# if we want to repropagate the exception, we can attempt to
#	# raise it with the whole traceback in case we can do that
#       # (the function was actually called from the except part)
#	# otherwise, we just raise the error again
#		if exc_value is e:
#			reraise(exc_type, exc_value, tb)
#		 else:
#			raise e
#	self.log_exception((exc_type, exc_value, tb))
#	server_error = InternalServerError()
#	# TODO: pass as param when Werkzeug>=1.0.0 is required
#	# TODO: also remove note about this from docstring and docs
#	server_error.original_exception = e
#	handler = self._find_error_handler(server_error)
#	if handler is not None:
#		server_error = handler(server_error)
# **Sample Output**
# pass as param when Werkzeug>=1.0.0 is required
# also remove note about this from docstring and docs

 
/# TODO: /!d
s/[[:space:]]*# TODO:[[:space:]]*//
