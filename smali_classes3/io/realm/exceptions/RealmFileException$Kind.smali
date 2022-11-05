.class public final enum Lio/realm/exceptions/RealmFileException$Kind;
.super Ljava/lang/Enum;
.source "RealmFileException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/exceptions/RealmFileException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/exceptions/RealmFileException$Kind;",
        ">;"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum BAD_HISTORY:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum EXISTS:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum FORMAT_UPGRADE_REQUIRED:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum INCOMPATIBLE_LOCK_FILE:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum NOT_FOUND:Lio/realm/exceptions/RealmFileException$Kind;

.field public static final enum PERMISSION_DENIED:Lio/realm/exceptions/RealmFileException$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    .line 38
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "BAD_HISTORY"

    invoke-direct {v0, v1, v4}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->BAD_HISTORY:Lio/realm/exceptions/RealmFileException$Kind;

    .line 43
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "PERMISSION_DENIED"

    invoke-direct {v0, v1, v5}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->PERMISSION_DENIED:Lio/realm/exceptions/RealmFileException$Kind;

    .line 47
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v6}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->EXISTS:Lio/realm/exceptions/RealmFileException$Kind;

    .line 51
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->NOT_FOUND:Lio/realm/exceptions/RealmFileException$Kind;

    .line 56
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "INCOMPATIBLE_LOCK_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->INCOMPATIBLE_LOCK_FILE:Lio/realm/exceptions/RealmFileException$Kind;

    .line 60
    new-instance v0, Lio/realm/exceptions/RealmFileException$Kind;

    const-string v1, "FORMAT_UPGRADE_REQUIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmFileException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->FORMAT_UPGRADE_REQUIRED:Lio/realm/exceptions/RealmFileException$Kind;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lio/realm/exceptions/RealmFileException$Kind;

    sget-object v1, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/exceptions/RealmFileException$Kind;->BAD_HISTORY:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/exceptions/RealmFileException$Kind;->PERMISSION_DENIED:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/exceptions/RealmFileException$Kind;->EXISTS:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/exceptions/RealmFileException$Kind;->NOT_FOUND:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->INCOMPATIBLE_LOCK_FILE:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->FORMAT_UPGRADE_REQUIRED:Lio/realm/exceptions/RealmFileException$Kind;

    aput-object v2, v0, v1

    sput-object v0, Lio/realm/exceptions/RealmFileException$Kind;->$VALUES:[Lio/realm/exceptions/RealmFileException$Kind;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getKind(B)Lio/realm/exceptions/RealmFileException$Kind;
    .locals 2

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown value for RealmFileException kind."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    .line 78
    :goto_0
    return-object v0

    .line 68
    :pswitch_1
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->PERMISSION_DENIED:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->EXISTS:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 72
    :pswitch_3
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->NOT_FOUND:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 74
    :pswitch_4
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->INCOMPATIBLE_LOCK_FILE:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 76
    :pswitch_5
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->FORMAT_UPGRADE_REQUIRED:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 78
    :pswitch_6
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->BAD_HISTORY:Lio/realm/exceptions/RealmFileException$Kind;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/exceptions/RealmFileException$Kind;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lio/realm/exceptions/RealmFileException$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/exceptions/RealmFileException$Kind;

    return-object v0
.end method

.method public static values()[Lio/realm/exceptions/RealmFileException$Kind;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->$VALUES:[Lio/realm/exceptions/RealmFileException$Kind;

    invoke-virtual {v0}, [Lio/realm/exceptions/RealmFileException$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/exceptions/RealmFileException$Kind;

    return-object v0
.end method
