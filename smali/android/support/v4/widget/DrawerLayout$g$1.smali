.class Landroid/support/v4/widget/DrawerLayout$g$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout$g;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$g;)V
    .locals 0

    .prologue
    .line 2057
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$g$1;->a:Landroid/support/v4/widget/DrawerLayout$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$g$1;->a:Landroid/support/v4/widget/DrawerLayout$g;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$g;->b()V

    .line 2060
    return-void
.end method
