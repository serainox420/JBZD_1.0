.class public final enum Lio/realm/internal/Collection$Mode;
.super Ljava/lang/Enum;
.source "Collection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/Collection$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMPTY:Lio/realm/internal/Collection$Mode;

.field public static final enum LINKVIEW:Lio/realm/internal/Collection$Mode;

.field public static final enum QUERY:Lio/realm/internal/Collection$Mode;

.field public static final enum TABLE:Lio/realm/internal/Collection$Mode;

.field public static final enum TABLEVIEW:Lio/realm/internal/Collection$Mode;

.field private static final synthetic a:[Lio/realm/internal/Collection$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    .line 298
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const-string v1, "TABLE"

    invoke-direct {v0, v1, v3}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    .line 299
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v4}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    .line 300
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const-string v1, "LINKVIEW"

    invoke-direct {v0, v1, v5}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    .line 301
    new-instance v0, Lio/realm/internal/Collection$Mode;

    const-string v1, "TABLEVIEW"

    invoke-direct {v0, v1, v6}, Lio/realm/internal/Collection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    .line 296
    const/4 v0, 0x5

    new-array v0, v0, [Lio/realm/internal/Collection$Mode;

    sget-object v1, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/internal/Collection$Mode;->a:[Lio/realm/internal/Collection$Mode;

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
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(B)Lio/realm/internal/Collection$Mode;
    .locals 3

    .prologue
    .line 304
    packed-switch p0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_0
    sget-object v0, Lio/realm/internal/Collection$Mode;->EMPTY:Lio/realm/internal/Collection$Mode;

    .line 314
    :goto_0
    return-object v0

    .line 308
    :pswitch_1
    sget-object v0, Lio/realm/internal/Collection$Mode;->TABLE:Lio/realm/internal/Collection$Mode;

    goto :goto_0

    .line 310
    :pswitch_2
    sget-object v0, Lio/realm/internal/Collection$Mode;->QUERY:Lio/realm/internal/Collection$Mode;

    goto :goto_0

    .line 312
    :pswitch_3
    sget-object v0, Lio/realm/internal/Collection$Mode;->LINKVIEW:Lio/realm/internal/Collection$Mode;

    goto :goto_0

    .line 314
    :pswitch_4
    sget-object v0, Lio/realm/internal/Collection$Mode;->TABLEVIEW:Lio/realm/internal/Collection$Mode;

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/Collection$Mode;
    .locals 1

    .prologue
    .line 296
    const-class v0, Lio/realm/internal/Collection$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Collection$Mode;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/Collection$Mode;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lio/realm/internal/Collection$Mode;->a:[Lio/realm/internal/Collection$Mode;

    invoke-virtual {v0}, [Lio/realm/internal/Collection$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/Collection$Mode;

    return-object v0
.end method
