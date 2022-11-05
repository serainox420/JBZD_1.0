.class Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;
.super Ljava/lang/Object;
.source "AdTruthImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/common/deviceData/managers/AdTruthImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;


# direct methods
.method constructor <init>(Lcom/openx/common/deviceData/managers/AdTruthImpl;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;->this$0:Lcom/openx/common/deviceData/managers/AdTruthImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getPreferencesManager()Lcom/openx/common/deviceData/listeners/PreferenceListener;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/openx/common/deviceData/listeners/PreferenceListener;->saveAdTruthValue(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method
