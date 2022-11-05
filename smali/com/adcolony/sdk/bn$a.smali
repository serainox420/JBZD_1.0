.class final enum Lcom/adcolony/sdk/bn$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/bn$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/adcolony/sdk/bn$a;

.field public static final enum B:Lcom/adcolony/sdk/bn$a;

.field public static final enum C:Lcom/adcolony/sdk/bn$a;

.field public static final enum D:Lcom/adcolony/sdk/bn$a;

.field private static final synthetic E:[Lcom/adcolony/sdk/bn$a;

.field public static final enum a:Lcom/adcolony/sdk/bn$a;

.field public static final enum b:Lcom/adcolony/sdk/bn$a;

.field public static final enum c:Lcom/adcolony/sdk/bn$a;

.field public static final enum d:Lcom/adcolony/sdk/bn$a;

.field public static final enum e:Lcom/adcolony/sdk/bn$a;

.field public static final enum f:Lcom/adcolony/sdk/bn$a;

.field public static final enum g:Lcom/adcolony/sdk/bn$a;

.field public static final enum h:Lcom/adcolony/sdk/bn$a;

.field public static final enum i:Lcom/adcolony/sdk/bn$a;

.field public static final enum j:Lcom/adcolony/sdk/bn$a;

.field public static final enum k:Lcom/adcolony/sdk/bn$a;

.field public static final enum l:Lcom/adcolony/sdk/bn$a;

.field public static final enum m:Lcom/adcolony/sdk/bn$a;

.field public static final enum n:Lcom/adcolony/sdk/bn$a;

.field public static final enum o:Lcom/adcolony/sdk/bn$a;

.field public static final enum p:Lcom/adcolony/sdk/bn$a;

.field public static final enum q:Lcom/adcolony/sdk/bn$a;

.field public static final enum r:Lcom/adcolony/sdk/bn$a;

.field public static final enum s:Lcom/adcolony/sdk/bn$a;

.field public static final enum t:Lcom/adcolony/sdk/bn$a;

.field public static final enum u:Lcom/adcolony/sdk/bn$a;

.field public static final enum v:Lcom/adcolony/sdk/bn$a;

.field public static final enum w:Lcom/adcolony/sdk/bn$a;

.field public static final enum x:Lcom/adcolony/sdk/bn$a;

.field public static final enum y:Lcom/adcolony/sdk/bn$a;

.field public static final enum z:Lcom/adcolony/sdk/bn$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_NONE"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 182
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->b:Lcom/adcolony/sdk/bn$a;

    .line 183
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_INVALID_SSL_DOMAIN"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->c:Lcom/adcolony/sdk/bn$a;

    .line 184
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->d:Lcom/adcolony/sdk/bn$a;

    .line 185
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_HOST_UNREACHABLE"

    invoke-direct {v0, v1, v7}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->e:Lcom/adcolony/sdk/bn$a;

    .line 186
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_WEB_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    .line 188
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_SERVER_MAINTENANCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->g:Lcom/adcolony/sdk/bn$a;

    .line 189
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_APP_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->h:Lcom/adcolony/sdk/bn$a;

    .line 190
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_APP_BANNED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->i:Lcom/adcolony/sdk/bn$a;

    .line 191
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_SESSION_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->j:Lcom/adcolony/sdk/bn$a;

    .line 192
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_SESSION_DISCONNECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->k:Lcom/adcolony/sdk/bn$a;

    .line 193
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_MALFORMED_ERROR_ID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->l:Lcom/adcolony/sdk/bn$a;

    .line 194
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_UNKNOWN_APP_STATE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->m:Lcom/adcolony/sdk/bn$a;

    .line 195
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_MALFORMED_RESULTS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    .line 196
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_MISSING_PARAMETER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->o:Lcom/adcolony/sdk/bn$a;

    .line 197
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_CLIENT_EXCEPTION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->p:Lcom/adcolony/sdk/bn$a;

    .line 198
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_API_SUBMISSION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    .line 199
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_SERVER_TO_SERVER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->r:Lcom/adcolony/sdk/bn$a;

    .line 200
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_SSL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->s:Lcom/adcolony/sdk/bn$a;

    .line 202
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_JSON"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    .line 203
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_NULL_VALUE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->u:Lcom/adcolony/sdk/bn$a;

    .line 204
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_NULL_RESPONSE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->v:Lcom/adcolony/sdk/bn$a;

    .line 205
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_IO_FAILURE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->w:Lcom/adcolony/sdk/bn$a;

    .line 206
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_MISC"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->x:Lcom/adcolony/sdk/bn$a;

    .line 208
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_DB_REWARD"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->y:Lcom/adcolony/sdk/bn$a;

    .line 209
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_INVALIDCONSUMERKEY"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->z:Lcom/adcolony/sdk/bn$a;

    .line 210
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->A:Lcom/adcolony/sdk/bn$a;

    .line 212
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_INSUFFICIENT_OS_VERSION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->B:Lcom/adcolony/sdk/bn$a;

    .line 214
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_UNCAUGHT_EXCEPTION"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    .line 216
    new-instance v0, Lcom/adcolony/sdk/bn$a;

    const-string v1, "YVOLVER_ERROR_NUM"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$a;->D:Lcom/adcolony/sdk/bn$a;

    .line 180
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/adcolony/sdk/bn$a;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/bn$a;->b:Lcom/adcolony/sdk/bn$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/bn$a;->c:Lcom/adcolony/sdk/bn$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/bn$a;->d:Lcom/adcolony/sdk/bn$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adcolony/sdk/bn$a;->e:Lcom/adcolony/sdk/bn$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adcolony/sdk/bn$a;->f:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adcolony/sdk/bn$a;->g:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adcolony/sdk/bn$a;->h:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adcolony/sdk/bn$a;->i:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adcolony/sdk/bn$a;->j:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adcolony/sdk/bn$a;->k:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adcolony/sdk/bn$a;->l:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adcolony/sdk/bn$a;->m:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adcolony/sdk/bn$a;->o:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adcolony/sdk/bn$a;->p:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adcolony/sdk/bn$a;->r:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adcolony/sdk/bn$a;->s:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/adcolony/sdk/bn$a;->u:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/adcolony/sdk/bn$a;->v:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/adcolony/sdk/bn$a;->w:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/adcolony/sdk/bn$a;->x:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/adcolony/sdk/bn$a;->y:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/adcolony/sdk/bn$a;->z:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/adcolony/sdk/bn$a;->A:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/adcolony/sdk/bn$a;->B:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/adcolony/sdk/bn$a;->D:Lcom/adcolony/sdk/bn$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adcolony/sdk/bn$a;->E:[Lcom/adcolony/sdk/bn$a;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/bn$a;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/adcolony/sdk/bn$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bn$a;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/bn$a;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/adcolony/sdk/bn$a;->E:[Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/bn$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/bn$a;

    return-object v0
.end method
