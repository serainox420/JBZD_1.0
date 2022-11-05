.class Landroid/support/customtabs/d$1;
.super Landroid/support/customtabs/b;
.source "CustomTabsServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/d;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/d;


# direct methods
.method constructor <init>(Landroid/support/customtabs/d;Landroid/support/customtabs/h;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Landroid/support/customtabs/d$1;->a:Landroid/support/customtabs/d;

    invoke-direct {p0, p2, p3}, Landroid/support/customtabs/b;-><init>(Landroid/support/customtabs/h;Landroid/content/ComponentName;)V

    return-void
.end method
