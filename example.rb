module Example
  scope(
    :search,
    ->(term) { do_stuff(term) }
  )

  def foo(scope_name)
    do_stuff

    @scope_name = scope_name.to_sym
  rescue => e
    puts("uh oh: #{e}")
  end

  def bar(conf)
    if self.conf == :foo
      yep
    end
  end
end
