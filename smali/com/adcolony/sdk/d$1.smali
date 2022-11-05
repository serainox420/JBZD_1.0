.class Lcom/adcolony/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ay;

.field final synthetic b:Lcom/adcolony/sdk/z;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

.field final synthetic e:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/ay;Lcom/adcolony/sdk/z;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adcolony/sdk/d$1;->e:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/ay;

    iput-object p3, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iput-object p4, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/ay;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/adcolony/sdk/ax;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v3, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/ay;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/ax;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V

    .line 78
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lcom/adcolony/sdk/d;

    iget-object v1, v1, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/ax;->k:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/ax;->l:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "description"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/ax;->m:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "thumb_filepath"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/ax;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Lcom/adcolony/sdk/ax;->b()Z

    .line 93
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/ay;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->a:Lcom/adcolony/sdk/ay;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ay;->a(Lcom/adcolony/sdk/ax;)V

    .line 101
    :goto_1
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->b:Lcom/adcolony/sdk/z;

    iget-object v3, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/adcolony/sdk/AdColonyNativeAdView;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V

    .line 83
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->e:Lcom/adcolony/sdk/d;

    iget-object v1, v1, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/adcolony/sdk/d$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/d$1;->d:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onRequestFilled(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    goto :goto_1
.end method
