package com.pubmatic.sdk.banner.mraid;
/* loaded from: classes3.dex */
public interface Consts {
    public static final String CommandArgEvent = "event";
    public static final String CommandArgUrl = "url";
    public static final String CommandClose = "close";
    public static final String CommandCreateCalendarEvent = "createcalendarevent";
    public static final String CommandExpand = "expand";
    public static final String CommandInit = "init";
    public static final String CommandOpen = "open";
    public static final String CommandPlayVideo = "playvideo";
    public static final String CommandResize = "resize";
    public static final String CommandSetExpandProperties = "setexpandproperties";
    public static final String CommandSetOrientationProperties = "setorientationproperties";
    public static final String CommandSetResizeProperties = "setresizeproperties";
    public static final String CommandStorePicture = "storepicture";
    public static final String CommandUpdateCurrentPosition = "updatecurrentposition";
    public static final String EventReady = "ready";
    public static final String ExpandPropertiesUseCustomClose = "useCustomClose";
    public static final String False = "false";
    public static final String FeatureCalendar = "calendar";
    public static final String FeatureInlineVideo = "inlineVideo";
    public static final String FeatureSMS = "sms";
    public static final String FeatureStorePicture = "storePicture";
    public static final String FeatureTel = "tel";
    public static final String OrientationPpropertiesAllowOrientationChange = "allowOrientationChange";
    public static final String OrientationPpropertiesForceOrientation = "forceOrientation";
    public static final String OrientationPropertiesForceOrientationLandscape = "landscape";
    public static final String OrientationPropertiesForceOrientationNone = "none";
    public static final String OrientationPropertiesForceOrientationPortrait = "portrait";
    public static final String PlacementTypeInline = "inline";
    public static final String PlacementTypeInterstitial = "interstitial";
    public static final String PropertiesHeight = "height";
    public static final String PropertiesWidth = "width";
    public static final String ResizePropertiesAllowOffscreen = "allowOffscreen";
    public static final String ResizePropertiesCCPositionBottomCenter = "bottom-center";
    public static final String ResizePropertiesCCPositionBottomLeft = "bottom-left";
    public static final String ResizePropertiesCCPositionBottomRight = "bottom-right";
    public static final String ResizePropertiesCCPositionCenter = "center";
    public static final String ResizePropertiesCCPositionTopCenter = "top-center";
    public static final String ResizePropertiesCCPositionTopLeft = "top-left";
    public static final String ResizePropertiesCCPositionTopRight = "top-right";
    public static final String ResizePropertiesCustomClosePosition = "customClosePosition";
    public static final String ResizePropertiesOffsetX = "offsetX";
    public static final String ResizePropertiesOffsetY = "offsetY";
    public static final String Scheme = "mraid";
    public static final String StateDefault = "default";
    public static final String StateExpanded = "expanded";
    public static final String StateHidden = "hidden";
    public static final String StateLoading = "loading";
    public static final String StateResized = "resized";
    public static final String True = "true";

    /* loaded from: classes3.dex */
    public enum CustomClosePosition {
        TopLeft,
        TopCenter,
        TopRight,
        Center,
        BottomLeft,
        BottomCenter,
        BottomRight
    }

    /* loaded from: classes3.dex */
    public enum Feature {
        SMS,
        Tel,
        Calendar,
        StorePicture,
        InlineVideo
    }

    /* loaded from: classes3.dex */
    public enum ForceOrientation {
        Portrait,
        Landscape,
        None
    }

    /* loaded from: classes3.dex */
    public enum PlacementType {
        Inline,
        Interstitial
    }

    /* loaded from: classes3.dex */
    public enum State {
        Loading,
        Default,
        Expanded,
        Resized,
        Hidden
    }
}
