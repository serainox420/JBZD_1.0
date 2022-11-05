.class Lpl/jbzd/app/view/main/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$8;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$8;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/main/MainActivity;->a(Lpl/jbzd/app/view/main/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    instance-of v1, v0, Lpl/jbzd/app/view/feed/FeedFragment;

    if-eqz v1, :cond_0

    .line 510
    check-cast v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->e()V

    .line 512
    :cond_0
    return-void
.end method
