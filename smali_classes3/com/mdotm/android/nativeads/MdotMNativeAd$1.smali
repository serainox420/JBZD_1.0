.class Lcom/mdotm/android/nativeads/MdotMNativeAd$1;
.super Ljava/lang/Object;
.source "MdotMNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/nativeads/MdotMNativeAd;->regesterView(Landroid/widget/LinearLayout;Lcom/mdotm/android/nativeads/MdotMNativeAd;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/nativeads/MdotMNativeAd;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

.field private final synthetic val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;


# direct methods
.method constructor <init>(Lcom/mdotm/android/nativeads/MdotMNativeAd;Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/nativeads/MdotMNativeAd;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->this$0:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    iput-object p2, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    iput-object p3, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    iput-object p4, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$activity:Landroid/app/Activity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$listener:Lcom/mdotm/android/listener/MdotMAdEventListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdEventListener;->onNativeAdClick()V

    .line 115
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-static {v0}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->access$0(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-static {v0}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->access$0(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Ad Clicked"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-static {v1}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->access$1(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 120
    iget-object v2, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-static {v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->access$1(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 119
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$mdotMNativeAd:Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-static {v0}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->access$0(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
