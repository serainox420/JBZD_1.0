.class Landroid/support/v4/c/a/a$b;
.super Landroid/support/v4/c/a/a;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/c/a/a;-><init>()V

    .line 109
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/support/v4/c/a/a$b;->a:Landroid/view/WindowManager;

    .line 110
    return-void
.end method
