.class Landroid/support/v4/media/session/i;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/i$b;,
        Landroid/support/v4/media/session/i$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/session/i$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/support/v4/media/session/i$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/i$b;-><init>(Landroid/support/v4/media/session/i$a;)V

    return-object v0
.end method
