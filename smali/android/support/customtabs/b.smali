.class public Landroid/support/customtabs/b;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final a:Landroid/support/customtabs/h;

.field private final b:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/h;Landroid/content/ComponentName;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/customtabs/b;->a:Landroid/support/customtabs/h;

    .line 51
    iput-object p2, p0, Landroid/support/customtabs/b;->b:Landroid/content/ComponentName;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/d;)Z
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/support/customtabs/a;)Landroid/support/customtabs/e;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    new-instance v1, Landroid/support/customtabs/b$1;

    invoke-direct {v1, p0, p1}, Landroid/support/customtabs/b$1;-><init>(Landroid/support/customtabs/b;Landroid/support/customtabs/a;)V

    .line 240
    :try_start_0
    iget-object v2, p0, Landroid/support/customtabs/b;->a:Landroid/support/customtabs/h;

    invoke-interface {v2, v1}, Landroid/support/customtabs/h;->a(Landroid/support/customtabs/g;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/customtabs/e;

    iget-object v2, p0, Landroid/support/customtabs/b;->a:Landroid/support/customtabs/h;

    iget-object v3, p0, Landroid/support/customtabs/b;->b:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/customtabs/e;-><init>(Landroid/support/customtabs/h;Landroid/support/customtabs/g;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/b;->a:Landroid/support/customtabs/h;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/h;->a(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method
