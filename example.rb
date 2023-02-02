module Example
  scope(
    :search,
    -> (term) { do_stuff(term) }
  )

  def foo
    do_stuff

  rescue => e
    puts("uh oh: #{e}")
  end
end
