.class Lcom/amazon/device/ads/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# instance fields
.field private allowOrientationChange:Ljava/lang/Boolean;

.field private forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

.field private final jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/OrientationProperties;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 23
    sget-object v0, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/OrientationProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 32
    return-void
.end method


# virtual methods
.method public fromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "allowOrientationChange"

    iget-object v2, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v1, "forceOrientation"

    iget-object v2, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v2}, Lcom/amazon/device/ads/ForceOrientation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/ForceOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    .line 75
    return-void
.end method

.method public getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    return-object v0
.end method

.method public isAllowOrientationChange()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowOrientationChange(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method public setForceOrientation(Lcom/amazon/device/ads/ForceOrientation;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    .line 52
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/amazon/device/ads/OrientationProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "forceOrientation"

    iget-object v3, p0, Lcom/amazon/device/ads/OrientationProperties;->forceOrientation:Lcom/amazon/device/ads/ForceOrientation;

    invoke-virtual {v3}, Lcom/amazon/device/ads/ForceOrientation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/amazon/device/ads/OrientationProperties;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "allowOrientationChange"

    iget-object v3, p0, Lcom/amazon/device/ads/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 67
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/amazon/device/ads/OrientationProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
