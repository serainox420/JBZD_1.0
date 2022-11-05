.class public final enum Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;
.super Ljava/lang/Enum;
.source "OXMCalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/calendar/OXMCalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transparency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

.field public static final enum OPAQUE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

.field public static final enum TRANSPARENT:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

.field public static final enum UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->TRANSPARENT:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    .line 28
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    const-string v1, "OPAQUE"

    invoke-direct {v0, v1, v3}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->OPAQUE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    .line 29
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->TRANSPARENT:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->OPAQUE:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    return-object v0
.end method

.method public static values()[Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    invoke-virtual {v0}, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/sdk/calendar/OXMCalendarEvent$Transparency;

    return-object v0
.end method
