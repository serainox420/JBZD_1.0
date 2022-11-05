.class public final enum Lcom/millennialmedia/NativeAd$ComponentName;
.super Ljava/lang/Enum;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/NativeAd$ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BODY:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum RATING:Lcom/millennialmedia/NativeAd$ComponentName;

.field public static final enum TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

.field private static final synthetic a:[Lcom/millennialmedia/NativeAd$ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "ICON_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "MAIN_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "CALL_TO_ACTION"

    invoke-direct {v0, v1, v7}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "RATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    new-instance v0, Lcom/millennialmedia/NativeAd$ComponentName;

    const-string v1, "DISCLAIMER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd$ComponentName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    .line 125
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/millennialmedia/NativeAd$ComponentName;

    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->a:[Lcom/millennialmedia/NativeAd$ComponentName;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/NativeAd$ComponentName;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/millennialmedia/NativeAd$ComponentName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/NativeAd$ComponentName;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/NativeAd$ComponentName;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/millennialmedia/NativeAd$ComponentName;->a:[Lcom/millennialmedia/NativeAd$ComponentName;

    invoke-virtual {v0}, [Lcom/millennialmedia/NativeAd$ComponentName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/NativeAd$ComponentName;

    return-object v0
.end method
