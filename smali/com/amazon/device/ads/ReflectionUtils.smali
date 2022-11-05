.class Lcom/amazon/device/ads/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isClassAvailable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method
