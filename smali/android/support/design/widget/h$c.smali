.class Landroid/support/design/widget/h$c;
.super Landroid/support/design/widget/h$d;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Landroid/support/design/widget/h$c;->a:Landroid/support/design/widget/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/h$d;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/h$1;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/design/widget/h$c;->a:Landroid/support/design/widget/h;

    iget v0, v0, Landroid/support/design/widget/h;->h:F

    return v0
.end method
