.class public final enum Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;
.super Ljava/lang/Enum;
.source "OXMCalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/calendar/OXMCalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field public static final enum CANCELLED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field public static final enum CONFIRMED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field public static final enum PENDING:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field public static final enum TENTATIVE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

.field public static final enum UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->PENDING:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 19
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    const-string v1, "TENTATIVE"

    invoke-direct {v0, v1, v3}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->TENTATIVE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 20
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    const-string v1, "CONFIRMED"

    invoke-direct {v0, v1, v4}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CONFIRMED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 21
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CANCELLED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 22
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->PENDING:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->TENTATIVE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CONFIRMED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->CANCELLED:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    return-object v0
.end method

.method public static values()[Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    invoke-virtual {v0}, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Status;

    return-object v0
.end method
