.class public final Lcom/openx/sdk/calendar/OXMCalendarFactory;
.super Ljava/lang/Object;
.source "OXMCalendarFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/sdk/calendar/OXMCalendarFactory$1;,
        Lcom/openx/sdk/calendar/OXMCalendarFactory$OXMCalendarImplHolder;
    }
.end annotation


# instance fields
.field private mImplementation:Lcom/openx/sdk/calendar/OXMCalendar;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastICS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarGTE14;

    invoke-direct {v0}, Lcom/openx/sdk/calendar/OXMCalendarGTE14;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarFactory;->mImplementation:Lcom/openx/sdk/calendar/OXMCalendar;

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarLT14;

    invoke-direct {v0}, Lcom/openx/sdk/calendar/OXMCalendarLT14;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/calendar/OXMCalendarFactory;->mImplementation:Lcom/openx/sdk/calendar/OXMCalendar;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/openx/sdk/calendar/OXMCalendarFactory$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/openx/sdk/calendar/OXMCalendarFactory;-><init>()V

    return-void
.end method

.method public static getCalendarInstance()Lcom/openx/sdk/calendar/OXMCalendar;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarFactory$OXMCalendarImplHolder;->instance:Lcom/openx/sdk/calendar/OXMCalendarFactory;

    iget-object v0, v0, Lcom/openx/sdk/calendar/OXMCalendarFactory;->mImplementation:Lcom/openx/sdk/calendar/OXMCalendar;

    return-object v0
.end method
