.class Lpl/jbzd/app/view/AuthActivity$2$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity$2;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity$2;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity$2;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$2$1;->a:Lpl/jbzd/app/view/AuthActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$2$1;->a:Lpl/jbzd/app/view/AuthActivity$2;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 692
    return-void
.end method
