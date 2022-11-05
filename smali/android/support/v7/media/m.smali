.class final Landroid/support/v7/media/m;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/m$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/media/m$a;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/l;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/m$a;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Landroid/support/v7/media/m$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/m$1;-><init>(Landroid/support/v7/media/m;)V

    iput-object v0, p0, Landroid/support/v7/media/m;->g:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/support/v7/media/m$2;

    invoke-direct {v0, p0}, Landroid/support/v7/media/m$2;-><init>(Landroid/support/v7/media/m;)V

    iput-object v0, p0, Landroid/support/v7/media/m;->h:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Landroid/support/v7/media/m;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/support/v7/media/m;->b:Landroid/support/v7/media/m$a;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/os/Handler;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/m;->d:Landroid/content/pm/PackageManager;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/l;

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/media/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 136
    :goto_1
    return v0

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/support/v7/media/m;->f:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/m;->f:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Landroid/support/v7/media/m;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/media/m;->g:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/media/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Landroid/support/v7/media/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/media/m;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-boolean v1, p0, Landroid/support/v7/media/m;->f:Z

    if-nez v1, :cond_1

    .line 126
    :cond_0
    return-void

    .line 96
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Landroid/support/v7/media/m;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 98
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 99
    if-eqz v0, :cond_4

    .line 100
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/media/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 101
    if-gez v3, :cond_2

    .line 102
    new-instance v3, Landroid/support/v7/media/l;

    iget-object v4, p0, Landroid/support/v7/media/m;->a:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Landroid/support/v7/media/l;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 105
    invoke-virtual {v3}, Landroid/support/v7/media/l;->h()V

    .line 106
    iget-object v4, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    iget-object v1, p0, Landroid/support/v7/media/m;->b:Landroid/support/v7/media/m$a;

    invoke-interface {v1, v3}, Landroid/support/v7/media/m$a;->a(Landroid/support/v7/media/c;)V

    :goto_1
    move v1, v0

    .line 115
    goto :goto_0

    .line 108
    :cond_2
    if-lt v3, v1, :cond_4

    .line 109
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/l;

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/media/l;->h()V

    .line 111
    invoke-virtual {v0}, Landroid/support/v7/media/l;->j()V

    .line 112
    iget-object v4, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v4, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-lt v2, v1, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/l;

    .line 121
    iget-object v3, p0, Landroid/support/v7/media/m;->b:Landroid/support/v7/media/m$a;

    invoke-interface {v3, v0}, Landroid/support/v7/media/m$a;->b(Landroid/support/v7/media/c;)V

    .line 122
    iget-object v3, p0, Landroid/support/v7/media/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0}, Landroid/support/v7/media/l;->i()V

    .line 119
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
