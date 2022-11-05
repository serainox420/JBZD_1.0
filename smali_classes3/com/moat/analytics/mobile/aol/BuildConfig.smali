.class public Lcom/moat/analytics/mobile/aol/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final DEBUG:Ljava/lang/Boolean;

.field public static final JMMAK_VERSION:Ljava/lang/String; = "1.7.11"

.field public static final NAMESPACE:Ljava/lang/String; = "AOL"

.field public static final REVISION:Ljava/lang/String; = "4724e28a731f8ba73e9eecc4d5c807705dd80963"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
