.class public final enum Lcom/smaato/soma/nativead/NativeAd$NativeType;
.super Ljava/lang/Enum;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/nativead/NativeAd$NativeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum CONTENT_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field public static final enum NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

.field private static final synthetic a:[Lcom/smaato/soma/nativead/NativeAd$NativeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "APP_WALL"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 260
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "CONTENT_WALL"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 261
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "NEWS_FEED"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 262
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "CHAT_LIST"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 263
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "CAROUSEL"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 264
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "CONTENT_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 265
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    const-string v1, "ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->ALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 258
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smaato/soma/nativead/NativeAd$NativeType;

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->ALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->a:[Lcom/smaato/soma/nativead/NativeAd$NativeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/nativead/NativeAd$NativeType;
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/nativead/NativeAd$NativeType;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->a:[Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {v0}, [Lcom/smaato/soma/nativead/NativeAd$NativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/nativead/NativeAd$NativeType;

    return-object v0
.end method
