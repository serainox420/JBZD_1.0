.class public abstract Landroid/support/customtabs/d;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/b;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/support/customtabs/d$1;

    .line 33
    invoke-static {p2}, Landroid/support/customtabs/h$a;->a(Landroid/os/IBinder;)Landroid/support/customtabs/h;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/customtabs/d$1;-><init>(Landroid/support/customtabs/d;Landroid/support/customtabs/h;Landroid/content/ComponentName;)V

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/support/customtabs/d;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/b;)V

    .line 35
    return-void
.end method
