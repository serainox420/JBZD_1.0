.class Landroid/support/v4/content/g;
.super Ljava/lang/Object;
.source "ContextCompatJellybean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
