const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b;
}

pub usingnamespace @import("./src/step.zig");