.class public final enum Lcom/inmobi/commons/network/Request$Format;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/network/Request$Format;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum JSON:Lcom/inmobi/commons/network/Request$Format;

.field public static final enum KEY_VAL:Lcom/inmobi/commons/network/Request$Format;

.field private static final synthetic a:[Lcom/inmobi/commons/network/Request$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/inmobi/commons/network/Request$Format;

    const-string v1, "KEY_VAL"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/network/Request$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/network/Request$Format;->KEY_VAL:Lcom/inmobi/commons/network/Request$Format;

    new-instance v0, Lcom/inmobi/commons/network/Request$Format;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/network/Request$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/network/Request$Format;->JSON:Lcom/inmobi/commons/network/Request$Format;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/commons/network/Request$Format;

    sget-object v1, Lcom/inmobi/commons/network/Request$Format;->KEY_VAL:Lcom/inmobi/commons/network/Request$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/network/Request$Format;->JSON:Lcom/inmobi/commons/network/Request$Format;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/commons/network/Request$Format;->a:[Lcom/inmobi/commons/network/Request$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/network/Request$Format;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/commons/network/Request$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/network/Request$Format;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/network/Request$Format;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/inmobi/commons/network/Request$Format;->a:[Lcom/inmobi/commons/network/Request$Format;

    invoke-virtual {v0}, [Lcom/inmobi/commons/network/Request$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/network/Request$Format;

    return-object v0
.end method
