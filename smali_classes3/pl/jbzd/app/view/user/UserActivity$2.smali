.class Lpl/jbzd/app/view/user/UserActivity$2;
.super Ljava/lang/Object;
.source "UserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/user/UserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/user/UserActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/user/UserActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lpl/jbzd/app/view/user/UserActivity$2;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lpl/jbzd/app/view/user/UserActivity$2;->a:Lpl/jbzd/app/view/user/UserActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/user/UserActivity;->onBackPressed()V

    .line 98
    return-void
.end method
