.PHONY: all reload compile clean

all: compile

compile:
	./rebar get-deps compile

reload: compile
	zsh -c './reload.erl $$(foreach f (src/*.erl); basename $$f .erl; end)'

clean:
	./rebar clean
