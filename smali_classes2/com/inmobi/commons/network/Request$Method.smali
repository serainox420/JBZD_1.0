.class public final enum Lcom/inmobi/commons/network/Request$Method;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/network/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/inmobi/commons/network/Request$Method;

.field public static final enum POST:Lcom/inmobi/commons/network/Request$Method;

.field public static final enum PUT:Lcom/inmobi/commons/network/Request$Method;

.field private static final synthetic a:[Lcom/inmobi/commons/network/Request$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/inmobi/commons/network/Request$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/network/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/network/Request$Method;->GET:Lcom/inmobi/commons/network/Request$Method;

    new-instance v0, Lcom/inmobi/commons/network/Request$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/network/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/network/Request$Method;->POST:Lcom/inmobi/commons/network/Request$Method;

    new-instance v0, Lcom/inmobi/commons/network/Request$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/network/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/network/Request$Method;->PUT:Lcom/inmobi/commons/network/Request$Method;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/network/Request$Method;

    sget-object v1, Lcom/inmobi/commons/network/Request$Method;->GET:Lcom/inmobi/commons/network/Request$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/network/Request$Method;->POST:Lcom/inmobi/commons/network/Request$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/network/Request$Method;->PUT:Lcom/inmobi/commons/network/Request$Method;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/network/Request$Method;->a:[Lcom/inmobi/commons/network/Request$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/network/Request$Method;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/commons/network/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/network/Request$Method;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/network/Request$Method;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/commons/network/Request$Method;->a:[Lcom/inmobi/commons/network/Request$Method;

    invoke-virtual {v0}, [Lcom/inmobi/commons/network/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/network/Request$Method;

    return-object v0
.end method
