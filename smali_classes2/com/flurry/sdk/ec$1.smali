.class final Lcom/flurry/sdk/ec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/ll;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 67
    check-cast p1, Lcom/flurry/sdk/ll;

    .line 1070
    iget-object v0, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-static {v0}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ec;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/ll;->b:Lcom/flurry/sdk/lk;

    iget-object v1, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-static {v1}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ec;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1074
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ec$5;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ll;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1085
    :cond_1
    :goto_0
    return-void

    .line 1076
    :pswitch_0
    iget-object v3, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    iget-object v1, p1, Lcom/flurry/sdk/ll;->b:Lcom/flurry/sdk/lk;

    iget-object v0, p1, Lcom/flurry/sdk/ll;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1118
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/flurry/sdk/ec;->a:Ljava/lang/ref/WeakReference;

    .line 1120
    new-instance v1, Lcom/flurry/sdk/bi;

    invoke-direct {v1}, Lcom/flurry/sdk/bi;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/bi;

    .line 1121
    new-instance v1, Lcom/flurry/sdk/h;

    invoke-direct {v1}, Lcom/flurry/sdk/h;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->c:Lcom/flurry/sdk/h;

    .line 1122
    new-instance v1, Lcom/flurry/sdk/g;

    invoke-direct {v1}, Lcom/flurry/sdk/g;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->d:Lcom/flurry/sdk/g;

    .line 1123
    iget-object v1, v3, Lcom/flurry/sdk/ec;->d:Lcom/flurry/sdk/g;

    .line 2790
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v4

    .line 3097
    iget-object v4, v4, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 2790
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2793
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2795
    const-string v5, "android.intent.action.VIEW"

    .line 3799
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3800
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3801
    invoke-static {v6}, Lcom/flurry/sdk/ly;->a(Landroid/content/Intent;)Z

    move-result v4

    .line 2062
    iput-boolean v4, v1, Lcom/flurry/sdk/g;->c:Z

    .line 1125
    new-instance v1, Lcom/flurry/sdk/hf;

    invoke-direct {v1}, Lcom/flurry/sdk/hf;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->e:Lcom/flurry/sdk/hc;

    .line 1126
    new-instance v1, Lcom/flurry/sdk/hg;

    invoke-direct {v1}, Lcom/flurry/sdk/hg;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->f:Lcom/flurry/sdk/hm;

    .line 1128
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 4097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 4257
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".flurryadlog."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v5

    .line 5101
    iget-object v5, v5, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 4257
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1128
    invoke-virtual {v1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v3, Lcom/flurry/sdk/ec;->g:Ljava/io/File;

    .line 1130
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 5224
    iget-object v1, v1, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 1130
    invoke-virtual {v1}, Lcom/flurry/sdk/p;->b()V

    .line 1132
    new-instance v1, Lcom/flurry/sdk/kf;

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v4

    .line 6097
    iget-object v4, v4, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 6261
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ".yflurryadlog."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v6

    .line 7101
    iget-object v6, v6, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 6261
    invoke-static {v6}, Lcom/flurry/sdk/ly;->i(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1132
    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ".yflurryadlog."

    const/4 v6, 0x1

    new-instance v7, Lcom/flurry/sdk/ec$6;

    invoke-direct {v7, v3}, Lcom/flurry/sdk/ec$6;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/flurry/sdk/kf;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lj;)V

    iput-object v1, v3, Lcom/flurry/sdk/ec;->h:Lcom/flurry/sdk/kf;

    .line 8032
    if-nez v0, :cond_3

    .line 1139
    :cond_2
    :goto_1
    iput-object v2, v3, Lcom/flurry/sdk/ec;->i:Ljava/lang/String;

    .line 1141
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ec$7;

    invoke-direct {v1, v3}, Lcom/flurry/sdk/ec$7;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 8046
    :cond_3
    if-nez v0, :cond_4

    move-object v1, v2

    .line 8037
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 8059
    if-eqz v0, :cond_2

    .line 8063
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 8064
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8051
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_7

    .line 8052
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1080
    :pswitch_1
    iget-object v1, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    iget-object v0, p1, Lcom/flurry/sdk/ll;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 8150
    iget-object v2, v1, Lcom/flurry/sdk/ec;->c:Lcom/flurry/sdk/h;

    .line 9072
    sget-object v3, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v4, "Registered Event Handler "

    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9073
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v3

    const-string v4, "com.flurry.android.impl.ads.AdEvent"

    iget-object v2, v2, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v3, v4, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 8151
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 9248
    iget-object v2, v2, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/bg;

    .line 8151
    invoke-virtual {v2}, Lcom/flurry/sdk/bg;->b()V

    .line 8153
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/ec$8;

    invoke-direct {v3, v1}, Lcom/flurry/sdk/ec$8;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 8160
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/ec$9;

    invoke-direct {v3, v1}, Lcom/flurry/sdk/ec$9;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 8169
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/kc;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8171
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 10224
    iget-object v1, v1, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 8171
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/p;->b(Landroid/content/Context;)V

    .line 8172
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 10228
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 8172
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1084
    :pswitch_2
    iget-object v1, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    iget-object v0, p1, Lcom/flurry/sdk/ll;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 11179
    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/kc;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11181
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 11224
    iget-object v2, v2, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 11181
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/p;->a(Landroid/content/Context;)V

    .line 11182
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 11228
    iget-object v2, v2, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 11182
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    .line 11185
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ec$10;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/ec$10;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 11192
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ec$11;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/ec$11;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 11199
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ec$12;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/ec$12;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1088
    :pswitch_3
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    invoke-static {v2}, Lcom/flurry/sdk/ec;->b(Lcom/flurry/sdk/ec;)Lcom/flurry/sdk/kh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 1090
    iget-object v0, p0, Lcom/flurry/sdk/ec$1;->a:Lcom/flurry/sdk/ec;

    .line 12208
    iget-object v1, v0, Lcom/flurry/sdk/ec;->c:Lcom/flurry/sdk/h;

    .line 13067
    sget-object v2, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v3, "Unregister Event Handler "

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 13068
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v2

    iget-object v1, v1, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 12210
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 13224
    iget-object v1, v1, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 12210
    invoke-virtual {v1}, Lcom/flurry/sdk/p;->a()V

    .line 12211
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 13228
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 12211
    invoke-virtual {v1}, Lcom/flurry/sdk/w;->a()V

    .line 12213
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ec$13;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/ec$13;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 12220
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ec$2;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/ec$2;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 12227
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ec$3;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/ec$3;-><init>(Lcom/flurry/sdk/ec;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 13395
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->b(Ljava/lang/String;)V

    .line 13396
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    .line 14037
    iget-object v0, v0, Lcom/flurry/sdk/f;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    goto/16 :goto_1

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
