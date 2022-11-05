.class public final enum Lcom/flurry/sdk/ei;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ei;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ei;

.field public static final enum b:Lcom/flurry/sdk/ei;

.field public static final enum c:Lcom/flurry/sdk/ei;

.field public static final enum d:Lcom/flurry/sdk/ei;

.field public static final enum e:Lcom/flurry/sdk/ei;

.field public static final enum f:Lcom/flurry/sdk/ei;

.field public static final enum g:Lcom/flurry/sdk/ei;

.field public static final enum h:Lcom/flurry/sdk/ei;

.field public static final enum i:Lcom/flurry/sdk/ei;

.field public static final enum j:Lcom/flurry/sdk/ei;

.field public static final enum k:Lcom/flurry/sdk/ei;

.field public static final enum l:Lcom/flurry/sdk/ei;

.field public static final enum m:Lcom/flurry/sdk/ei;

.field public static final enum n:Lcom/flurry/sdk/ei;

.field public static final enum o:Lcom/flurry/sdk/ei;

.field public static final enum p:Lcom/flurry/sdk/ei;

.field private static final synthetic r:[Lcom/flurry/sdk/ei;


# instance fields
.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kUnknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei;

    .line 8
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kNoNetworkConnectivity"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->b:Lcom/flurry/sdk/ei;

    .line 9
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kNoContext"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->c:Lcom/flurry/sdk/ei;

    .line 10
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kInvalidOAuth"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/ei;

    .line 11
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kInvalidImageUrl"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/ei;

    .line 12
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kInvalidBundle"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->f:Lcom/flurry/sdk/ei;

    .line 13
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kRequestTokenFailed"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->g:Lcom/flurry/sdk/ei;

    .line 14
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kUserInfoFailed"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->h:Lcom/flurry/sdk/ei;

    .line 15
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kOAuthLoginFailed"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->i:Lcom/flurry/sdk/ei;

    .line 16
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kAccessTokenFailed"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->j:Lcom/flurry/sdk/ei;

    .line 17
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kPostFailed"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->k:Lcom/flurry/sdk/ei;

    .line 18
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kInvalidPostId"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->l:Lcom/flurry/sdk/ei;

    .line 19
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kPostCancelled"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->m:Lcom/flurry/sdk/ei;

    .line 20
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kTimeOut"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->n:Lcom/flurry/sdk/ei;

    .line 21
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kFlurryShareActivityMissing"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->o:Lcom/flurry/sdk/ei;

    .line 22
    new-instance v0, Lcom/flurry/sdk/ei;

    const-string v1, "kChromeTabError"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ei;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ei;->p:Lcom/flurry/sdk/ei;

    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/flurry/sdk/ei;

    sget-object v1, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ei;->b:Lcom/flurry/sdk/ei;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ei;->c:Lcom/flurry/sdk/ei;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/ei;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/ei;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ei;->f:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ei;->g:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/ei;->h:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/ei;->i:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/ei;->j:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/sdk/ei;->k:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/sdk/ei;->l:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/sdk/ei;->m:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/sdk/ei;->n:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/sdk/ei;->o:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/flurry/sdk/ei;->p:Lcom/flurry/sdk/ei;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ei;->r:[Lcom/flurry/sdk/ei;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/flurry/sdk/ei;->q:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ei;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/ei;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ei;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ei;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/ei;->r:[Lcom/flurry/sdk/ei;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ei;

    return-object v0
.end method
