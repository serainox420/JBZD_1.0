.class Lpl/jbzd/app/view/AuthActivity$9$2;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity$9;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lpl/jbzd/app/view/AuthActivity$9;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity$9;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$9$2;->b:Lpl/jbzd/app/view/AuthActivity$9;

    iput-object p2, p0, Lpl/jbzd/app/view/AuthActivity$9$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$9$2;->b:Lpl/jbzd/app/view/AuthActivity$9;

    iget-object v0, v0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/AuthActivity$9$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 636
    return-void
.end method
