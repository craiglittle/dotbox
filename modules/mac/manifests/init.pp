class mac {

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect

  include osx::dock::2d
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::hide_indicator_lights

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::show_hidden_files

  include osx::keyboard::capslock_to_control

  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::software_update

  class { 'osx::global::key_repeat_delay':
    delay => 10
  }

  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }

  class { 'osx::dock::position':
    position => left
  }

  class { 'osx::dock::icon_size':
    size => 20
  }

}
