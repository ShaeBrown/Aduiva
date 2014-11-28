#define __caster_initialize
caster_initialize();
if (caster_error_occurred())
  show_error("Fatal error in caster extension: " + caster_error_message(), false);

#define __caster_deinitialize
caster_error_occurred();
caster_deinitialize();
if (caster_error_occurred())
  show_error("Error in caster extension: " + caster_error_message(), true);

