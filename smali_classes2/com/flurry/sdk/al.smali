.class public final enum Lcom/flurry/sdk/al;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/al;

.field public static final enum b:Lcom/flurry/sdk/al;

.field public static final enum c:Lcom/flurry/sdk/al;

.field public static final enum d:Lcom/flurry/sdk/al;

.field public static final enum e:Lcom/flurry/sdk/al;

.field public static final enum f:Lcom/flurry/sdk/al;

.field public static final enum g:Lcom/flurry/sdk/al;

.field private static final synthetic i:[Lcom/flurry/sdk/al;


# instance fields
.field final h:I


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
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    .line 8
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    .line 9
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    .line 10
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    .line 11
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    .line 12
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "EVICTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    .line 13
    new-instance v0, Lcom/flurry/sdk/al;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/sdk/al;

    sget-object v1, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/al;->i:[Lcom/flurry/sdk/al;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/flurry/sdk/al;->h:I

    .line 19
    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/al;
    .locals 1

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 38
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 40
    :pswitch_6
    sget-object v0, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/al;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/al;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/al;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/al;->i:[Lcom/flurry/sdk/al;

    invoke-virtual {v0}, [Lcom/flurry/sdk/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/al;

    return-object v0
.end method
