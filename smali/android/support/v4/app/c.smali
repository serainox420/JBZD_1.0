.class Landroid/support/v4/app/c;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/c$d;,
        Landroid/support/v4/app/c$c;,
        Landroid/support/v4/app/c$b;,
        Landroid/support/v4/app/c$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/support/v4/app/c$c;)Landroid/app/SharedElementCallback;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz p0, :cond_0

    .line 70
    new-instance v0, Landroid/support/v4/app/c$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/c$d;-><init>(Landroid/support/v4/app/c$c;)V

    .line 72
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/c$c;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$c;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 60
    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 45
    instance-of v0, p0, Landroid/support/v4/app/c$b;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 46
    check-cast v0, Landroid/support/v4/app/c$b;

    .line 47
    invoke-interface {v0, p2}, Landroid/support/v4/app/c$b;->validateRequestPermissionsRequestCode(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/c$c;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$c;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 65
    return-void
.end method
