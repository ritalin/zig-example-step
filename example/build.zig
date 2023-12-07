const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "hello",
        .root_source_file = .{ .path = "./hello_world.zig" },
        .target = target,
        .optimize = optimize,
    });

    //  For `zig build`
    b.installArtifact(exe);

    const example_cmd = try @import("example_step").RunExample.create(b);
    example_cmd.addExample(exe, .{});
}

