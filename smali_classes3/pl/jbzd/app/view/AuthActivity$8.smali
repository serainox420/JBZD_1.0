.class Lpl/jbzd/app/view/AuthActivity$8;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$8;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$8;->a:Lpl/jbzd/app/view/AuthActivity;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;I)V

    .line 559
    return-void
.end method