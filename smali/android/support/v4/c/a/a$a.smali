.class Landroid/support/v4/c/a/a$a;
.super Landroid/support/v4/c/a/a;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/c/a/a;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/support/v4/c/a/b;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c/a/a$a;->a:Ljava/lang/Object;

    .line 137
    return-void
.end method
