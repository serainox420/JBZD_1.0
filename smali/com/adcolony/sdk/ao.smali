.class Lcom/adcolony/sdk/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "System.open_store"

    new-instance v1, Lcom/adcolony/sdk/ao$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$1;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 48
    const-string v0, "System.save_screenshot"

    new-instance v1, Lcom/adcolony/sdk/ao$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$8;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 57
    const-string v0, "System.telephone"

    new-instance v1, Lcom/adcolony/sdk/ao$9;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$9;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 66
    const-string v0, "System.sms"

    new-instance v1, Lcom/adcolony/sdk/ao$10;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$10;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 75
    const-string v0, "System.vibrate"

    new-instance v1, Lcom/adcolony/sdk/ao$11;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$11;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 84
    const-string v0, "System.open_browser"

    new-instance v1, Lcom/adcolony/sdk/ao$12;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$12;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 93
    const-string v0, "System.mail"

    new-instance v1, Lcom/adcolony/sdk/ao$13;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$13;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 102
    const-string v0, "System.launch_app"

    new-instance v1, Lcom/adcolony/sdk/ao$14;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$14;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 111
    const-string v0, "System.create_calendar_event"

    new-instance v1, Lcom/adcolony/sdk/ao$15;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$15;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 120
    const-string v0, "System.check_app_presence"

    new-instance v1, Lcom/adcolony/sdk/ao$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$2;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 129
    const-string v0, "System.check_social_presence"

    new-instance v1, Lcom/adcolony/sdk/ao$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$3;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 138
    const-string v0, "System.social_post"

    new-instance v1, Lcom/adcolony/sdk/ao$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$4;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 147
    const-string v0, "System.make_in_app_purchase"

    new-instance v1, Lcom/adcolony/sdk/ao$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$5;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 155
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 993
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    if-nez v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 1000
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v1, :cond_2

    .line 1002
    iget-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_0

    .line 1007
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 1008
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    instance-of v1, v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onLeftApplication(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 973
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 975
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/ao$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/ao$7;-><init>(Lcom/adcolony/sdk/ao;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 984
    :cond_0
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 3

    .prologue
    .line 166
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 168
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v2, v2, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ax;

    .line 170
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    if-nez v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    if-nez v2, :cond_2

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 177
    :cond_2
    if-nez v1, :cond_3

    .line 179
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdUnit.make_in_app_purchase"

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    iget v0, v0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 186
    :goto_1
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :cond_3
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdUnit.make_in_app_purchase"

    iget-object v1, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1023
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    if-nez v0, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 1030
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_0

    .line 1037
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 1038
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    instance-of v1, v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    if-eqz v1, :cond_0

    .line 1042
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onClicked(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 199
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 232
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 206
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "product_id"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "handle"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_1
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    const-string v2, "success"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 219
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 221
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 222
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    const-string v1, "Unable to open."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 230
    const-string v1, "success"

    invoke-static {v3, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 231
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method c(Lcom/adcolony/sdk/z;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 245
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 317
    :goto_0
    return v0

    .line 250
    :cond_0
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "ad_session_id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Pictures/AdColony_Screenshots/AdColony_Screenshot_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 261
    invoke-virtual {v4, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 263
    invoke-virtual {v4, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 268
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Pictures/AdColony_Screenshots"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 271
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 281
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 284
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v5, v4, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 285
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 286
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 287
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x0

    new-instance v6, Lcom/adcolony/sdk/ao$6;

    invoke-direct {v6, p0, v2, p1}, Lcom/adcolony/sdk/ao$6;-><init>(Lcom/adcolony/sdk/ao;Lorg/json/JSONObject;Lcom/adcolony/sdk/z;)V

    invoke-static {v4, v5, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 303
    const-string v1, "Error saving screenshot."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 306
    const-string v1, "success"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 307
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v1

    .line 312
    const-string v1, "Error saving screenshot."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 315
    const-string v1, "success"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 316
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0

    .line 273
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method d(Lcom/adcolony/sdk/z;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 357
    :goto_0
    return v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 338
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "phone_number"

    .line 339
    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 341
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 343
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 344
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    .line 346
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 347
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 349
    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 353
    const-string v1, "Failed to dial number."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 355
    const-string v1, "success"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 356
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/z;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 369
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return v2

    .line 374
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 377
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "recipients"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 378
    const-string v0, ""

    move v1, v2

    .line 379
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 381
    if-eqz v1, :cond_1

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 390
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "body"

    .line 391
    invoke-static {v3, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 393
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 395
    const-string v0, "success"

    const/4 v1, 0x1

    invoke-static {v5, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 397
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 399
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 400
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 402
    goto/16 :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 406
    const-string v0, "Failed to create sms."

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 408
    const-string v0, "success"

    invoke-static {v5, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 409
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0
.end method

.method f(Lcom/adcolony/sdk/z;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 422
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return v1

    .line 427
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "length_ms"

    const/16 v4, 0x1f4

    invoke-static {v0, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 429
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 430
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->v()Lorg/json/JSONArray;

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 433
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 435
    invoke-static {v6, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.permission.VIBRATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v3

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_2
    if-nez v2, :cond_3

    .line 443
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "No vibrate permission detected."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 445
    const-string v0, "success"

    invoke-static {v5, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 446
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0

    .line 452
    :cond_3
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 453
    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 455
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-static {v5, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 456
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 457
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 461
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Vibrate command failed."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 463
    const-string v0, "success"

    invoke-static {v5, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 464
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 477
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 516
    :goto_0
    return v0

    .line 482
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 486
    :try_start_0
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    const-string v4, "browser"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    const-string v4, "browser"

    const-string v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    :cond_1
    const-string v4, "safari"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const-string v4, "safari"

    const-string v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 500
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 502
    const-string v2, "success"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 503
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 505
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 506
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 508
    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 512
    const-string v1, "Failed to launch browser."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 514
    const-string v1, "success"

    invoke-static {v3, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 515
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method h(Lcom/adcolony/sdk/z;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 529
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return v1

    .line 534
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 537
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "recipients"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 538
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "html"

    invoke-static {v0, v5}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    .line 539
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "subject"

    invoke-static {v0, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v7, "body"

    invoke-static {v0, v7}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 542
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    move v0, v1

    .line 543
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_1

    .line 545
    invoke-static {v4, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 550
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    if-nez v5, :cond_2

    .line 553
    const-string v4, "plain/text"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    :cond_2
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.EMAIL"

    .line 556
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 559
    const-string v0, "success"

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 560
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 562
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 563
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 565
    goto/16 :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 569
    const-string v2, "Failed to send email."

    invoke-virtual {p0, v2, v1}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    const-string v0, "success"

    invoke-static {v3, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 573
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0
.end method

.method i(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 587
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 619
    :goto_0
    return v0

    .line 592
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 594
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "deep_link"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/ao;->b(Lcom/adcolony/sdk/z;)Z

    move-result v0

    goto :goto_0

    .line 601
    :cond_1
    :try_start_0
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "handle"

    .line 602
    invoke-static {v4, v5}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 603
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 605
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 606
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    .line 608
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 609
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 615
    const-string v1, "Failed to launch external application."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 617
    const-string v1, "success"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 618
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method j(Lcom/adcolony/sdk/z;)Z
    .locals 25

    .prologue
    .line 632
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 634
    const/4 v2, 0x0

    .line 886
    :goto_0
    return v2

    .line 637
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v15

    .line 638
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 640
    const-string v6, ""

    .line 641
    const-string v5, ""

    .line 643
    const-wide/16 v10, 0x0

    .line 646
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'hh:mmZ"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 647
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'hh:mm:ssZ"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 648
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "params"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 652
    const-string v2, "recurrence"

    invoke-static {v12, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 655
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v4

    .line 656
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v3

    .line 657
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v2

    .line 659
    const-string v13, "description"

    invoke-static {v12, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 660
    const-string v13, "location"

    invoke-static {v12, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 661
    const-string v13, "start"

    invoke-static {v12, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 662
    const-string v13, "end"

    invoke-static {v12, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 663
    const-string v13, "summary"

    invoke-static {v12, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 665
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 667
    const-string v2, "expires"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 668
    const-string v2, "frequency"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 669
    const-string v2, "daysInWeek"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 670
    const-string v2, "daysInMonth"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 671
    const-string v2, "daysInYear"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 674
    :cond_1
    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object v13, v14

    .line 681
    :goto_1
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 682
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v9

    .line 690
    :goto_2
    if-nez v7, :cond_13

    .line 694
    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 695
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v12, v7

    .line 706
    :goto_3
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 714
    :goto_4
    if-nez v7, :cond_12

    .line 718
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 727
    :goto_5
    if-nez v12, :cond_2

    .line 729
    const-string v2, "Unable to create Calendar Event"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 731
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 732
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 733
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 697
    :catch_0
    move-exception v12

    move-object v12, v7

    goto :goto_3

    .line 708
    :catch_1
    move-exception v7

    move-object v7, v8

    goto :goto_4

    .line 720
    :catch_2
    move-exception v5

    move-object v5, v7

    goto :goto_5

    .line 737
    :cond_2
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 738
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 739
    const-wide/16 v8, 0x0

    .line 742
    if-eqz v5, :cond_3

    .line 744
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v8, v8, v22

    const-wide/16 v22, 0x3e8

    div-long v8, v8, v22

    .line 748
    :cond_3
    const-string v5, "DAILY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 750
    const-wide/32 v10, 0x15180

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 767
    :goto_6
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_d

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FREQ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";COUNT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 773
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 775
    const-string v7, ""

    .line 778
    const/4 v5, 0x0

    move/from16 v24, v5

    move-object v5, v7

    move/from16 v7, v24

    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 780
    if-lez v7, :cond_4

    .line 782
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 784
    :cond_4
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 778
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 752
    :cond_5
    const-string v5, "WEEKLY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 754
    const-wide/32 v10, 0x93a80

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_6

    .line 756
    :cond_6
    const-string v5, "MONTHLY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 758
    const-wide/32 v10, 0x2820a8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_6

    .line 760
    :cond_7
    const-string v5, "YEARLY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 762
    const-wide/32 v10, 0x1e187e0

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto/16 :goto_6

    .line 787
    :pswitch_0
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "MO"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 790
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "TU"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 793
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "WE"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 796
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "TH"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 799
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "FR"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 802
    :pswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "SA"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 805
    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "SU"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 809
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";BYDAY="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 813
    :goto_9
    :try_start_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_f

    .line 815
    const-string v6, ""

    .line 816
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 818
    if-lez v5, :cond_9

    .line 820
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 823
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 816
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 825
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";BYMONTHDAY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    .line 829
    :goto_b
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 831
    const-string v5, ""

    .line 832
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 834
    if-lez v4, :cond_b

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 839
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 832
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 841
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";BYYEARDAY="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v2

    .line 849
    :goto_d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/event"

    .line 850
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    .line 851
    invoke-virtual {v3, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "description"

    .line 852
    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "beginTime"

    .line 853
    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "endTime"

    .line 854
    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rrule"

    .line 855
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 870
    :goto_e
    :try_start_8
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 872
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-static {v15, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 873
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 875
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "ad_session_id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "ad_session_id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 878
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 859
    :cond_d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/event"

    .line 860
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    .line 861
    invoke-virtual {v2, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "description"

    .line 862
    invoke-virtual {v2, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "beginTime"

    .line 863
    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "endTime"

    .line 864
    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    goto :goto_e

    .line 880
    :catch_3
    move-exception v2

    .line 882
    const-string v2, "Unable to create Calendar Event."

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 884
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 885
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 886
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 844
    :catch_4
    move-exception v2

    move-object v2, v6

    goto/16 :goto_d

    :catch_5
    move-exception v2

    move-object v2, v4

    goto/16 :goto_d

    :catch_6
    move-exception v2

    move-object v2, v3

    goto/16 :goto_d

    .line 684
    :catch_7
    move-exception v12

    goto/16 :goto_2

    :cond_e
    move-object v2, v3

    goto/16 :goto_d

    :cond_f
    move-object v3, v4

    goto/16 :goto_b

    :cond_10
    move-object v4, v6

    goto/16 :goto_9

    :cond_11
    move-wide v8, v10

    goto/16 :goto_6

    :cond_12
    move-object v5, v7

    goto/16 :goto_5

    :cond_13
    move-object v12, v7

    goto/16 :goto_3

    :cond_14
    move-object v13, v12

    goto/16 :goto_1

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method k(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 899
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 901
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-static {v1}, Lcom/adcolony/sdk/au;->a(Ljava/lang/String;)Z

    move-result v2

    .line 904
    const-string v3, "success"

    invoke-static {v0, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 905
    const-string v3, "result"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 906
    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    const-string v2, "service"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 910
    return v4
.end method

.method l(Lcom/adcolony/sdk/z;)Z
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/ao;->k(Lcom/adcolony/sdk/z;)Z

    move-result v0

    return v0
.end method

.method m(Lcom/adcolony/sdk/z;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 931
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 961
    :goto_0
    return v0

    .line 936
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 940
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    .line 941
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v7, "text"

    .line 943
    invoke-static {v6, v7}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v7, "url"

    invoke-static {v6, v7}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 942
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 945
    sget-object v4, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-string v5, "Share this post via..."

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 947
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 948
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    .line 950
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;)V

    .line 951
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "ad_session_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ao;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 953
    goto :goto_0

    .line 955
    :catch_0
    move-exception v1

    .line 957
    const-string v1, "Unable to create social post."

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 959
    const-string v1, "success"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 960
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0
.end method
