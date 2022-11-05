.class Lpl/jbzd/app/view/main/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->i()V
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
    .line 824
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$4;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 827
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$4;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/main/MainActivity;->f(Lpl/jbzd/app/view/main/MainActivity;)Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    .line 828
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$4;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 829
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$4;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 830
    return-void
.end method
