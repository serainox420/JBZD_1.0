.class Lpl/jbzd/app/view/menu/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/menu/MenuActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/menu/MenuActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/menu/MenuActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuActivity$2;->a:Lpl/jbzd/app/view/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity$2;->a:Lpl/jbzd/app/view/menu/MenuActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/menu/MenuActivity;->h:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()V

    .line 62
    return-void
.end method
