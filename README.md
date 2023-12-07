# zig-example-step
Add example command as build steps.

## Usage

### Register example(s)

1. Add This module as package dependency of `build.zig.zon`.
2. Import this module on `build` function in `build.zig`.
3. Instanciate step of this module.
4. Register an artifact to call `addExample` of step.

```
// #2
const example_step = try @import("example_step");
// #3
const example_cmd = example_step.RunExample.create(b);
// #4
const exe = b.addExecutable(...);
example_cmd.addExample(exe, .{});
```

### Invoke example

Run following command.

```
zig build example -- <Registerd-Namr or Index>
```

Running following command will result in showing the "Registerd-Namr" or "Index".

```
zig build example
```