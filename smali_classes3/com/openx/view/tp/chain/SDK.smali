.class public final enum Lcom/openx/view/tp/chain/SDK;
.super Ljava/lang/Enum;
.source "SDK.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/tp/chain/SDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/tp/chain/SDK;

.field public static final enum AdColony:Lcom/openx/view/tp/chain/SDK;

.field public static final enum AdMob:Lcom/openx/view/tp/chain/SDK;

.field public static final enum AdNetwork:Lcom/openx/view/tp/chain/SDK;

.field public static final enum Facebook:Lcom/openx/view/tp/chain/SDK;

.field public static final enum Fallback:Lcom/openx/view/tp/chain/SDK;

.field public static final enum InMobi:Lcom/openx/view/tp/chain/SDK;

.field public static final enum Millenial:Lcom/openx/view/tp/chain/SDK;

.field public static final enum MoPub:Lcom/openx/view/tp/chain/SDK;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "AdMob"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    .line 7
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "Millenial"

    invoke-direct {v0, v1, v4}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    .line 8
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "MoPub"

    invoke-direct {v0, v1, v5}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    .line 9
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "AdColony"

    invoke-direct {v0, v1, v6}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    .line 10
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "AdNetwork"

    invoke-direct {v0, v1, v7}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    .line 11
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "Fallback"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    .line 12
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "Facebook"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    .line 13
    new-instance v0, Lcom/openx/view/tp/chain/SDK;

    const-string v1, "InMobi"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/chain/SDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/openx/view/tp/chain/SDK;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdMob:Lcom/openx/view/tp/chain/SDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Millenial:Lcom/openx/view/tp/chain/SDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->InMobi:Lcom/openx/view/tp/chain/SDK;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/view/tp/chain/SDK;->$VALUES:[Lcom/openx/view/tp/chain/SDK;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/tp/chain/SDK;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/openx/view/tp/chain/SDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/SDK;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/tp/chain/SDK;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/openx/view/tp/chain/SDK;->$VALUES:[Lcom/openx/view/tp/chain/SDK;

    invoke-virtual {v0}, [Lcom/openx/view/tp/chain/SDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/tp/chain/SDK;

    return-object v0
.end method
