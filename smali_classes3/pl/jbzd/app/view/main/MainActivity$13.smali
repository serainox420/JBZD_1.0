.class Lpl/jbzd/app/view/main/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->c()V
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
    .line 779
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$13;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$13;->a:Lpl/jbzd/app/view/main/MainActivity;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;I)V

    .line 783
    return-void
.end method
