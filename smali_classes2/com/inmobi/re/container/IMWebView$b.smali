.class final enum Lcom/inmobi/re/container/IMWebView$b;
.super Ljava/lang/Enum;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/re/container/IMWebView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum b:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum c:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum d:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum e:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum f:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum g:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum h:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum i:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum j:Lcom/inmobi/re/container/IMWebView$b;

.field public static final enum k:Lcom/inmobi/re/container/IMWebView$b;

.field private static final synthetic l:[Lcom/inmobi/re/container/IMWebView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->a:Lcom/inmobi/re/container/IMWebView$b;

    .line 205
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "MISSING_PARAMETER"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->b:Lcom/inmobi/re/container/IMWebView$b;

    .line 207
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "CONETNT_ID_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->c:Lcom/inmobi/re/container/IMWebView$b;

    .line 209
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "CONTENT_URL_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->d:Lcom/inmobi/re/container/IMWebView$b;

    .line 211
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "CONTENT_URL_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->e:Lcom/inmobi/re/container/IMWebView$b;

    .line 213
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "NOT_SUPPORTED_SDK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->f:Lcom/inmobi/re/container/IMWebView$b;

    .line 215
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "CONTENT_TYPE_NOT_SUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->g:Lcom/inmobi/re/container/IMWebView$b;

    .line 217
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "CONTENT_SIZE_NOT_SUPPORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->h:Lcom/inmobi/re/container/IMWebView$b;

    .line 219
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->i:Lcom/inmobi/re/container/IMWebView$b;

    .line 221
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "PERMISSION_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->j:Lcom/inmobi/re/container/IMWebView$b;

    .line 223
    new-instance v0, Lcom/inmobi/re/container/IMWebView$b;

    const-string v1, "SD_CARD_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->k:Lcom/inmobi/re/container/IMWebView$b;

    .line 201
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/inmobi/re/container/IMWebView$b;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->a:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->b:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->c:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->d:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->e:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->f:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->g:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->h:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->i:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->j:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/inmobi/re/container/IMWebView$b;->k:Lcom/inmobi/re/container/IMWebView$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/re/container/IMWebView$b;->l:[Lcom/inmobi/re/container/IMWebView$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/re/container/IMWebView$b;
    .locals 1

    .prologue
    .line 201
    const-class v0, Lcom/inmobi/re/container/IMWebView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$b;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/re/container/IMWebView$b;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/inmobi/re/container/IMWebView$b;->l:[Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v0}, [Lcom/inmobi/re/container/IMWebView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/re/container/IMWebView$b;

    return-object v0
.end method
