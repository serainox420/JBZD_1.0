.class Landroid/support/v7/media/o$e;
.super Landroid/support/v7/media/o;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/o$e$b;,
        Landroid/support/v7/media/o$e$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Landroid/media/AudioManager;

.field b:I

.field private final d:Landroid/support/v7/media/o$e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/o$e;->c:Ljava/util/ArrayList;

    .line 123
    sget-object v1, Landroid/support/v7/media/o$e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/media/o;-><init>(Landroid/content/Context;)V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/o$e;->b:I

    .line 132
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    .line 133
    new-instance v0, Landroid/support/v7/media/o$e$b;

    invoke-direct {v0, p0}, Landroid/support/v7/media/o$e$b;-><init>(Landroid/support/v7/media/o$e;)V

    iput-object v0, p0, Landroid/support/v7/media/o$e;->d:Landroid/support/v7/media/o$e$b;

    .line 135
    iget-object v0, p0, Landroid/support/v7/media/o$e;->d:Landroid/support/v7/media/o$e$b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/media/o$e;->i()V

    .line 138
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 1

    .prologue
    .line 163
    const-string v0, "DEFAULT_ROUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/support/v7/media/o$e$a;

    invoke-direct {v0, p0}, Landroid/support/v7/media/o$e$a;-><init>(Landroid/support/v7/media/o$e;)V

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/media/o$e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    iget-object v1, p0, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 143
    iget-object v2, p0, Landroid/support/v7/media/o$e;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/media/o$e;->b:I

    .line 144
    new-instance v2, Landroid/support/v7/media/a$a;

    const-string v3, "DEFAULT_ROUTE"

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_system_route_name:I

    .line 145
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/support/v7/media/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v7/media/o$e;->c:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v2, v0}, Landroid/support/v7/media/a$a;->a(Ljava/util/Collection;)Landroid/support/v7/media/a$a;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v5}, Landroid/support/v7/media/a$a;->b(I)Landroid/support/v7/media/a$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v2}, Landroid/support/v7/media/a$a;->a(I)Landroid/support/v7/media/a$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v2}, Landroid/support/v7/media/a$a;->f(I)Landroid/support/v7/media/a$a;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Landroid/support/v7/media/a$a;->e(I)Landroid/support/v7/media/a$a;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/o$e;->b:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/support/v7/media/a$a;->d(I)Landroid/support/v7/media/a$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/media/a$a;->a()Landroid/support/v7/media/a;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/support/v7/media/d$a;

    invoke-direct {v1}, Landroid/support/v7/media/d$a;-><init>()V

    .line 156
    invoke-virtual {v1, v0}, Landroid/support/v7/media/d$a;->a(Landroid/support/v7/media/a;)Landroid/support/v7/media/d$a;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/support/v7/media/d$a;->a()Landroid/support/v7/media/d;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$e;->a(Landroid/support/v7/media/d;)V

    .line 159
    return-void
.end method
