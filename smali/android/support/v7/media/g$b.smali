.class final Landroid/support/v7/media/g$b;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/support/v7/media/g;

.field public final b:Landroid/support/v7/media/g$a;

.field public c:Landroid/support/v7/media/f;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/support/v7/media/g;Landroid/support/v7/media/g$a;)V
    .locals 1

    .prologue
    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iput-object p1, p0, Landroid/support/v7/media/g$b;->a:Landroid/support/v7/media/g;

    .line 1904
    iput-object p2, p0, Landroid/support/v7/media/g$b;->b:Landroid/support/v7/media/g$a;

    .line 1905
    sget-object v0, Landroid/support/v7/media/f;->b:Landroid/support/v7/media/f;

    iput-object v0, p0, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    .line 1906
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/media/g$g;)Z
    .locals 1

    .prologue
    .line 1909
    iget v0, p0, Landroid/support/v7/media/g$b;->d:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    .line 1910
    invoke-virtual {p1, v0}, Landroid/support/v7/media/g$g;->a(Landroid/support/v7/media/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
