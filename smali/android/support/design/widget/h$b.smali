.class Landroid/support/design/widget/h$b;
.super Landroid/support/design/widget/h$d;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/design/widget/h$b;->a:Landroid/support/design/widget/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/h$d;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/h$1;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/design/widget/h$b;->a:Landroid/support/design/widget/h;

    iget v0, v0, Landroid/support/design/widget/h;->h:F

    iget-object v1, p0, Landroid/support/design/widget/h$b;->a:Landroid/support/design/widget/h;

    iget v1, v1, Landroid/support/design/widget/h;->i:F

    add-float/2addr v0, v1

    return v0
.end method
