.class public final enum Lcom/apprupt/sdk/URLRequest$Type;
.super Ljava/lang/Enum;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/URLRequest$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/apprupt/sdk/URLRequest$Type;

.field public static final enum POST:Lcom/apprupt/sdk/URLRequest$Type;

.field private static final synthetic a:[Lcom/apprupt/sdk/URLRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/apprupt/sdk/URLRequest$Type;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/URLRequest$Type;->POST:Lcom/apprupt/sdk/URLRequest$Type;

    new-instance v0, Lcom/apprupt/sdk/URLRequest$Type;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/URLRequest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/URLRequest$Type;->GET:Lcom/apprupt/sdk/URLRequest$Type;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/apprupt/sdk/URLRequest$Type;

    sget-object v1, Lcom/apprupt/sdk/URLRequest$Type;->POST:Lcom/apprupt/sdk/URLRequest$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/URLRequest$Type;->GET:Lcom/apprupt/sdk/URLRequest$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apprupt/sdk/URLRequest$Type;->a:[Lcom/apprupt/sdk/URLRequest$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest$Type;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/apprupt/sdk/URLRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/URLRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/URLRequest$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/apprupt/sdk/URLRequest$Type;->a:[Lcom/apprupt/sdk/URLRequest$Type;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/URLRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/URLRequest$Type;

    return-object v0
.end method
