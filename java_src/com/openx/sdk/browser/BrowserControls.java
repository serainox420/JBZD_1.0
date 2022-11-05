package com.openx.sdk.browser;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import com.google.android.gms.drive.DriveFile;
import com.openx.android_sdk_openx.R;
import com.openx.common.utils.constants.Constants;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.sdk.event.OXMEvent;
import com.openx.sdk.event.OXMEventsHandler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class BrowserControls extends TableLayout {
    private Button mBackBtn;
    private BrowserControlsEventsListener mBrowserControlsEventsListener;
    private Button mCloseBtn;
    private OXMEventsHandler mCloseEventsListener;
    private Button mForthBtn;
    private LinearLayout mLeftPart;
    private Button mOpenInExternalBrowserBtn;
    private Button mRefreshBtn;
    private LinearLayout mRightPart;
    private Handler mUIHandler;

    public BrowserControls(Context context, BrowserControlsEventsListener browserControlsEventsListener) {
        super(context);
        init(context.getResources(), browserControlsEventsListener);
    }

    public void updateNavigationButtonsState() {
        this.mUIHandler.post(new Runnable() { // from class: com.openx.sdk.browser.BrowserControls.1
            @Override // java.lang.Runnable
            public void run() {
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    if (BrowserControls.this.mBrowserControlsEventsListener.canGoBack()) {
                        BrowserControls.this.mBackBtn.setBackgroundResource(R.drawable.openx_res_back_active);
                    } else {
                        BrowserControls.this.mBackBtn.setBackgroundResource(R.drawable.openx_res_back_inactive);
                    }
                    if (BrowserControls.this.mBrowserControlsEventsListener.canGoForward()) {
                        BrowserControls.this.mForthBtn.setBackgroundResource(R.drawable.openx_res_forth_active);
                    } else {
                        BrowserControls.this.mForthBtn.setBackgroundResource(R.drawable.openx_res_forth_inactive);
                    }
                }
            }
        });
    }

    private void bindEventListeners() {
        this.mCloseBtn.setOnClickListener(new View.OnClickListener() { // from class: com.openx.sdk.browser.BrowserControls.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    BrowserControls.this.mBrowserControlsEventsListener.closeBrowser();
                }
            }
        });
        this.mBackBtn.setOnClickListener(new View.OnClickListener() { // from class: com.openx.sdk.browser.BrowserControls.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    BrowserControls.this.mBrowserControlsEventsListener.onGoBack();
                }
            }
        });
        this.mForthBtn.setOnClickListener(new View.OnClickListener() { // from class: com.openx.sdk.browser.BrowserControls.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    BrowserControls.this.mBrowserControlsEventsListener.onGoForward();
                }
            }
        });
        this.mRefreshBtn.setOnClickListener(new View.OnClickListener() { // from class: com.openx.sdk.browser.BrowserControls.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    BrowserControls.this.mBrowserControlsEventsListener.onRelaod();
                }
            }
        });
        this.mOpenInExternalBrowserBtn.setOnClickListener(new View.OnClickListener() { // from class: com.openx.sdk.browser.BrowserControls.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = null;
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    str = BrowserControls.this.mBrowserControlsEventsListener.getCurrentURL();
                }
                if (str != null) {
                    BrowserControls.this.openURLInExternalBrowser(str);
                }
            }
        });
    }

    public void openURLInExternalBrowser(String str) {
        Utils.log(this, String.format(Utils.getLogMessage("starting_external_browser_with"), str));
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            getContext().startActivity(intent);
            Utils.log(this, Utils.getLogMessage("browser_has_started"));
        } catch (ActivityNotFoundException e) {
            Utils.log(this, String.format(Utils.getLogMessage("could_not_handle_intent"), str));
        }
    }

    private void setButtonDefaultSize(Button button) {
        button.setHeight((int) (Utils.DENSITY * 50.0f));
        button.setWidth((int) (Utils.DENSITY * 50.0f));
    }

    private void init(Resources resources, BrowserControlsEventsListener browserControlsEventsListener) {
        this.mUIHandler = new Handler();
        this.mBrowserControlsEventsListener = browserControlsEventsListener;
        TableRow tableRow = new TableRow(getContext());
        this.mLeftPart = new LinearLayout(getContext());
        this.mRightPart = new LinearLayout(getContext());
        this.mLeftPart.setVisibility(8);
        this.mRightPart.setGravity(5);
        setBackgroundColor(Constants.BROWSER_CONTROLS_PANEL_COLOR);
        setAllButtons();
        bindEventListeners();
        this.mLeftPart.addView(this.mBackBtn);
        this.mLeftPart.addView(this.mForthBtn);
        this.mLeftPart.addView(this.mRefreshBtn);
        this.mLeftPart.addView(this.mOpenInExternalBrowserBtn);
        this.mRightPart.addView(this.mCloseBtn);
        tableRow.addView(this.mLeftPart, new TableRow.LayoutParams(-1, -1, 3.0f));
        tableRow.addView(this.mRightPart, new TableRow.LayoutParams(-1, -1, 5.0f));
        addView(tableRow);
        setCloseEventListener();
        OXMManagersResolver.getInstance().getEventsManager().registerEventListener(OXMEvent.OXMEventType.CLOSE_ACTIVE_INTERNAL_WINDOW, this.mCloseEventsListener);
    }

    private void setCloseEventListener() {
        this.mCloseEventsListener = new OXMEventsHandler() { // from class: com.openx.sdk.browser.BrowserControls.7
            @Override // com.openx.sdk.event.OXMEventsHandler
            public void onPerform(OXMEvent oXMEvent) {
                BrowserControls.this.dispose();
                if (BrowserControls.this.mBrowserControlsEventsListener != null) {
                    BrowserControls.this.mBrowserControlsEventsListener.setCreatorOfView(oXMEvent.getArgs());
                    BrowserControls.this.mBrowserControlsEventsListener.closeBrowser();
                }
            }
        };
    }

    private void setAllButtons() {
        this.mCloseBtn = new Button(getContext());
        setButtonDefaultSize(this.mCloseBtn);
        this.mCloseBtn.setBackgroundResource(R.drawable.openx_res_close);
        this.mBackBtn = new Button(getContext());
        setButtonDefaultSize(this.mBackBtn);
        this.mBackBtn.setBackgroundResource(R.drawable.openx_res_back_inactive);
        this.mForthBtn = new Button(getContext());
        setButtonDefaultSize(this.mForthBtn);
        this.mForthBtn.setBackgroundResource(R.drawable.openx_res_forth_inactive);
        this.mRefreshBtn = new Button(getContext());
        setButtonDefaultSize(this.mRefreshBtn);
        this.mRefreshBtn.setBackgroundResource(R.drawable.openx_res_refresh);
        this.mOpenInExternalBrowserBtn = new Button(getContext());
        setButtonDefaultSize(this.mOpenInExternalBrowserBtn);
        this.mOpenInExternalBrowserBtn.setBackgroundResource(R.drawable.openx_res_open_in_browser);
    }

    public void showNavigationControls() {
        this.mLeftPart.setVisibility(0);
    }

    public void hideNavigationControls() {
        this.mLeftPart.setVisibility(8);
    }

    public void dispose() {
        OXMManagersResolver.getInstance().getEventsManager().unregisterEventListener(OXMEvent.OXMEventType.CLOSE_ACTIVE_INTERNAL_WINDOW, this.mCloseEventsListener);
    }
}
