.class Landroid/support/v4/media/session/h;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/h$b;,
        Landroid/support/v4/media/session/h$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/session/h$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/support/v4/media/session/h$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/h$b;-><init>(Landroid/support/v4/media/session/h$a;)V

    return-object v0
.end method
